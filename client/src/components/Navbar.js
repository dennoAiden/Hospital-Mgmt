// Navbar.js
import React, { useState } from 'react';
import { NavLink } from 'react-router-dom';
import { useAuth } from './AuthContext';

function Navbar() {
  const { user, role, setUser } = useAuth();
  const [isOpen, setIsOpen] = useState(false);

  const handleLogout = () => {
    fetch("/api/logout", { method: 'DELETE', credentials: 'include' })
      .then((resp) => {
        if (resp.ok) setUser(null);
        else throw new Error('Failed to logout');
      })
      .catch((error) => console.error('Logout error:', error));
  };

  return (
    <nav className="bg-blue-900 text-white shadow-md">
      <div className="flex justify-between items-center px-4 py-3 md:px-8">
        {/* Logo */}
        <div className="flex items-center gap-3">
          <img src="/images/logo1.png" alt="TibaCare Logo" className="w-10 h-10" />
          <span className="text-lg md:text-xl font-semibold">TibaCare Hospital</span>
        </div>

        {/* Mobile toggle */}
        <button
          className="md:hidden text-2xl focus:outline-none"
          onClick={() => setIsOpen(!isOpen)}
        >
          ☰
        </button>

        {/* Nav Links */}
        <div
          className={`${
            isOpen ? 'block' : 'hidden'
          } md:flex md:items-center md:space-x-6 w-full md:w-auto mt-3 md:mt-0`}
        >
          <ul className="flex flex-col md:flex-row gap-3 md:gap-6 text-center md:text-left">
            <li><NavLink to="/" className="hover:text-blue-300">Home</NavLink></li>
            <li><NavLink to="/about" className="hover:text-blue-300">About</NavLink></li>
            <li><NavLink to="/departments" className="hover:text-blue-300">Departments</NavLink></li>
            <li><NavLink to="/contact" className="hover:text-blue-300">Contact</NavLink></li>
          </ul>

          <div className="mt-3 md:mt-0 flex flex-col md:flex-row items-center gap-3 md:ml-6">
            {user ? (
              <>
                <span className="text-sm">Hello, {user.first_name}</span>
                {role === 'doctor' && (
                  <NavLink to="/doctordashboard" className="bg-blue-700 px-3 py-1 rounded hover:bg-blue-600">
                    Dashboard
                  </NavLink>
                )}
                {role === 'patient' && (
                  <NavLink to="/patientdashboard" className="bg-blue-700 px-3 py-1 rounded hover:bg-blue-600">
                    Dashboard
                  </NavLink>
                )}
                <button onClick={handleLogout} className="bg-red-600 px-3 py-1 rounded hover:bg-red-500">
                  Logout
                </button>
              </>
            ) : (
              <>
                <NavLink to="/signup" className="hover:text-blue-300">Signup</NavLink>
                <NavLink to="/login" className="hover:text-blue-300">Login</NavLink>
              </>
            )}
          </div>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
