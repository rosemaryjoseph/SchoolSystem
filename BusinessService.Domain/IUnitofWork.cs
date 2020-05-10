using System;

namespace BusinessService.Domain
{
    public interface IUnitofWork:IDisposable
    {
        void Commit();
    }
}
