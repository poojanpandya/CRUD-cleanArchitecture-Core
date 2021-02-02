using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using CRUD_cleanArchitecture_Core.Models;
using cleanArchitecture.Domain.Models;
using cleanArchitecture.Infra.Data.Interfaces;
using cleanArchitecture.Application.Interfaces;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.IO;

namespace CRUD_cleanArchitecture_Core.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IUserService _userService;
        private readonly IUserRepository _userRepository;
        User user = new User();

        public HomeController(ILogger<HomeController> logger, IUserService userService, IUserRepository userRepository)
        {
            _logger = logger;
            _userService = userService;
            _userRepository = userRepository;
        }

        #region Get Users
        public ActionResult Index()
        {
            var userList = _userService.GetUsers();
            return View(userList);
        }

        #endregion

        #region AddUpdateUser
        public ActionResult AddUpdateUser(int? Id)
        {
            try
            {
                //Get CountryList
                SelectList CountryList = new SelectList(_userService.GetCountryList(), "Value", "Text");
                //Get HobbyList and Bind in UserHobbyList
                SelectList HobbyList = new SelectList(_userService.GetHobbies(), "HobbyId", "HobbyName");
                //Added in ViewBag
                ViewBag.CountryList = CountryList;
                ViewBag.HobbyList = HobbyList;

                if (Id >= 0)
                {
                    user = _userRepository.GetUserById(Id);
                    SelectList StateList = new SelectList(_userRepository.GetStatesListbyCountryId(user.CountryId), "Value", "Text");
                    ViewBag.StateList = StateList;
                    // Bind CityList with Selected value
                    SelectList CityList = new SelectList(_userRepository.GetCitiesListbyStateId(user.StateId), "Value", "Text");
                    ViewBag.CityList = CityList;
                }

                return View(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region AddUpdateUser Post
        [HttpPost]
        public ActionResult AddUpdateUser(User model)
        {
            //Get CountryList
            SelectList CountryList = new SelectList(_userService.GetCountryList(), "Value", "Text");

            MultiSelectList HobbyList = new MultiSelectList(_userService.GetHobbies(), "HobbyId", "HobbyName");
            ViewBag.HobbyList = HobbyList;

            ViewBag.CountryList = CountryList;

            if (ModelState.IsValid)
            {

                var files = Request.Form.Files;
                if (files.Count > 0)
                {
                    foreach (var file in files)
                    {
                        if (file.Length > 0)
                        {
                            using (var ms = new MemoryStream())
                            {
                                file.CopyTo(ms);
                                var fileBytes = ms.ToArray();
                                string base64String = Convert.ToBase64String(fileBytes);
                                model.Profilepicture = base64String;
                            }
                        }
                    }
                }
                else
                {
                    model.Profilepicture = "";
                }
                model.Hobbies = string.Join(",", model.HobbiesArray);
                var result = _userService.AddUpdateUser(model);

                if (result == true)
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewData["ErrorMessage"] = "There is an error in save Product!!";
                    return View(model);
                }
            }
            return View(model);
        }
        #endregion

        #region GetStateListbyCountryId
        public JsonResult GetStateListbyCountryId(int countryId)
        {
            try
            {
                // Get StateList From CommonData By Passing CountryId 
                SelectList StateList = new SelectList(_userService.GetStateListbyCountryId(countryId), "Value", "Text");
                return Json(StateList);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region GetCityListbyStateId
        public JsonResult GetCityListbyStateId(int stateId)
        {
            try
            {
                // Get cityList From CommonData By Passing StateId 
                SelectList CityList = new SelectList(_userService.GetCityListbyStateId(stateId), "Value", "Text");
                return Json(CityList);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        #endregion

        #region DeleteUser
        public ActionResult DeleteUser(int? Id)
        {
            try
            {
                var result = _userService.DeleteUser(Id);
                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion 

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
