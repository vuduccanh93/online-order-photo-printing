using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ODPP.Client.obj
{
    public class User
    {
        private string firstName;

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        private string lastName;

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private DateTime dob;

        public DateTime Dob
        {
            get { return dob; }
            set { dob = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string phone;

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        private string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        private string passwood;

        public string Passwood
        {
            get { return passwood; }
            set { passwood = value; }
        }
        private byte[] photo;

        public byte[] Photo
        {
            get { return photo; }
            set { photo = value; }
        }
        private bool sex;

        public bool Sex
        {
            get { return sex; }
            set { sex = value; }
        }
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public User(){}
        public User(int id, string fname, string lname, string email, DateTime dob, string address, string phone, string username, string password, byte[] photo, bool sex)
        {
            this.id = id;
            this.firstName = fname;
            this.lastName = lname;
            this.email = email;
            this.dob = dob;
            this.address = address;
            this.phone = phone;
            this.username = username;
            this.passwood = passwood;
            this.photo = photo;
            this.sex = sex;
        }
    }
}