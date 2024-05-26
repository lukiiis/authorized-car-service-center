import "./ServiceCarousel.css"
import React, { useState, useEffect, act } from 'react';
import {Link} from "react-router-dom";
import {ServiceCarouselProps} from "../../pages/service/serviceData";



const ServiceCarousel: React.FC<ServiceCarouselProps> = ({ serviceData, currentServiceId  }) => {

  const [activeIndex, setActiveIndex] = useState(0);
  const intervalTime = 6500
  console.log(currentServiceId)

  const filteredServiceData = serviceData.filter(service => service.serviceId !== currentServiceId);

  useEffect(() => {
    const interval = setInterval(() => {
      setActiveIndex((prevIndex) => (prevIndex + 1) % filteredServiceData.length)
    }, intervalTime)

    return () => clearInterval(interval) 
  }, [filteredServiceData.length])

  const handleItemClick = (index: number) => {
    setActiveIndex(index);
  }
    return(
      <div className="app">
      <Link to ={`/service/${filteredServiceData[activeIndex].serviceId}`} state={{service_id: filteredServiceData[activeIndex].serviceId}} className="caroseul-section">
        <img className="caroseul-image" src={`data:image/jpeg;base64,${filteredServiceData[activeIndex].smallPhoto}`} />
        <div className="image-overlay"></div>
        <div className="image-section__text">
          <p className="text-white text-4xl font-bold">{filteredServiceData[activeIndex].name}</p>
        </div>
      </Link>
      <div className="flex justify-center gap-8 flex-wrap">
        {filteredServiceData.map((service, index) => (
          <div 
            key={index}
            className={`nav-item ${index === activeIndex ? 'nav-item--active' : ''} text-gray-500 text-gra` }
            onClick={() => handleItemClick(index)}
          >
            {service.name}
          </div>
        ))}
      </div>
    </div>
    )
}

export default ServiceCarousel