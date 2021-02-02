using cleanArchitecture.Domain.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Text;

namespace cleanArchitecture.Application.Interfaces
{
    public interface IUserService
    {
        IEnumerable<User> GetUsers();
        SelectList GetCountryList();
        SelectList GetStateListbyCountryId(int countryId);
        SelectList GetCityListbyStateId(int stateId);
        List<Hobby> GetHobbies();
        bool AddUpdateUser(User model);
        User GetUserById(int? Id);
        bool DeleteUser(int? Id);
    }
}
