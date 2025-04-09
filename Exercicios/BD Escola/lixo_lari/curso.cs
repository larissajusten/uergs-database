using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Bdescolaam
{
    #region Curso
    public class Curso
    {
        #region Member Variables
        protected int _idcurso;
        protected string _descricao;
        protected int _cargaHoraria;
        #endregion
        #region Constructors
        public Curso() { }
        public Curso(string descricao, int cargaHoraria)
        {
            this._descricao=descricao;
            this._cargaHoraria=cargaHoraria;
        }
        #endregion
        #region Public Properties
        public virtual int Idcurso
        {
            get {return _idcurso;}
            set {_idcurso=value;}
        }
        public virtual string Descricao
        {
            get {return _descricao;}
            set {_descricao=value;}
        }
        public virtual int CargaHoraria
        {
            get {return _cargaHoraria;}
            set {_cargaHoraria=value;}
        }
        #endregion
    }
    #endregion
}