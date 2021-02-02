using cleanArchitecture.Application.Interfaces;
using cleanArchitecture.Application.Services;
using cleanArchitecture.Infra.Data.Interfaces;
using cleanArchitecture.Infra.Data.Repositories;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace cleanArchitecture.Infra.IoC
{
    public class DependencyContainer
    {
        public static void RegisterServices(IServiceCollection services)
        {
            //CleanArchitecture.Application
            services.AddScoped<IUserService, UserService>();

            //CleanArchitecture.Domain.Interfaces | CleanArchitecture.Infra.Data.Repositories
            services.AddScoped<IUserRepository, UserRepository>();

         
        }
    }
}
