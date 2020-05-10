﻿using System.Collections.Generic;

namespace BusinessService.Domain.Repositories
{
    public interface IRepository<T> where T:class
    {

        IEnumerable<T> GetAll();
        T GetById(int id);
        void Add(T entity);
        void Update(T entity);
        void Delete(T entity);
    }
}
