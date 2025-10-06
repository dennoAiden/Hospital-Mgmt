import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import Navbar from './Navbar';
import Footer from './Footer';

const DoctorsByDepartment = () => {
  const { departmentId } = useParams();
  const [doctors, setDoctors] = useState([]);
  const [error, setError] = useState(null);

  // ✅ Load from backend (Render or local)
  const API_URL = process.env.REACT_APP_API_URL || "http://localhost:5000";

  useEffect(() => {
    fetch(`${API_URL}/api/departments/${departmentId}`)
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => {
        setDoctors(data || []);
      })
      .catch(error => {
        console.error('Error fetching doctors:', error);
        setError('Error fetching doctors');
      });
  }, [departmentId, API_URL]);

  return (
    <div>
      <Navbar />
      <div className='doctor-section'>
        <h1>Doctors in Department {departmentId}</h1>
        {error && <p>{error}</p>}
        <div className="doctors-list">
          {doctors.length > 0 ? (
            doctors.map(doctor => (
              <div key={doctor.id} className="doctor-card">
                <Link to={`/doctors/${doctor.id}`}>
                  <img
                    src={`${API_URL}/images?model=doctor&filename=${doctor.image}`} 
                    alt={`Dr. ${doctor.first_name} ${doctor.last_name}`}
                    onError={(e) => {
                      e.target.onerror = null;
                      e.target.src = '/fallback_image.jpg'; // fallback stored in public/
                    }}
                  />
                  <h3>Dr. {doctor.first_name} {doctor.last_name}</h3>
                  <p>Specialty: {doctor.specialty}</p>
                </Link>
              </div>
            ))
          ) : (
            <p>No doctors found in this department.</p>
          )}
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default DoctorsByDepartment;
