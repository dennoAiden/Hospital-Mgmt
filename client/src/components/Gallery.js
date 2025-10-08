// Gallery.js
import React, { useState, useEffect } from "react";

function Gallery({ images }) {
  const [imageIndex, setImageIndex] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setImageIndex((prevIndex) => (prevIndex + 1) % images.length);
    }, 5000);
    return () => clearInterval(interval);
  }, [images.length]);

  return (
    <div className="relative w-full flex justify-center items-center bg-gray-100">
      {images.length > 0 && (
        <div className="w-full max-h-[500px] overflow-hidden rounded-lg shadow-md">
          <img
            src={images[imageIndex].url}
            alt={images[imageIndex].alt}
            loading="lazy" // ✅ Lazy loading for LCP optimization
            className="w-full h-[300px] sm:h-[400px] md:h-[500px] object-cover transition-transform duration-700 ease-in-out"
          />
        </div>
      )}
    </div>
  );
}

export default Gallery;
