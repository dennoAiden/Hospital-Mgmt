import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import Navbar from './Navbar';
import Footer from './Footer';

const Departments = () => {
  const [departments, setDepartments] = useState([]);
  const [error, setError] = useState(null);

  // ✅ Use environment variable for backend base URL
  // Example: REACT_APP_API_URL=https://hospital-mgmt-backend.onrender.com
  const API_URL = process.env.REACT_APP_API_URL

  useEffect(() => {
    // Fetch department data from backend
    fetch(`${API_URL}/api/departments`)
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => setDepartments(data))
      .catch(error => setError('Error fetching departments: ' + error.message));
  }, [API_URL]);

  return (
    <div>
      <Navbar />
      <div className='department-section'>
        <h1>Hospital Departments</h1>
        {error && <p>{error}</p>}

        <div className="departments-grid">
          {departments.map(department => (
            <div key={department.id} className="department-item">
              <Link to={`/departments/${department.id}`}>
                <img
                  src={`${API_URL}api/images?model=department&filename=${department.image}`} 
                  alt={department.name}
                  onError={(e) => {
                    e.target.onerror = null; 
                    e.target.src = '/fallback_image.jpg'; // fallback image in /public folder
                  }}
                />
                <h3>{department.name}</h3>
                <p>{department.description}</p>
              </Link>
            </div>
          ))}
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default Departments;
