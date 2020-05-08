using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessService.Domain
{
    public interface IUnitofWork:IDisposable
    {
        void Commit();
    }
}
