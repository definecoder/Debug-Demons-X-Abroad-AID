import React, { useState, useEffect } from "react";
import ExpertReqCard from "../components/ExpertReqCard";

const VarifyExpert = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const requestOptions = {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
          },
        };
        const response = await fetch(
          "http://192.168.1.100:8282/api/auth/getuapprovedUsers",
          requestOptions
        );
        const jsonData = await response.json();
        console.log(jsonData);
        setData(jsonData); // Assuming jsonData is in the format { data: [...] }
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    };

    fetchData();
  }, [data]);

  return (
    <>
        {data.length > 0  ? (
        data.map((manush) => (
            <ExpertReqCard
            name={manush.name}
            image={manush.photoLink}
            university={manush.university}
            country={manush.country}
            expertIn={manush.expertise}
            details={manush.details}
            id={manush.id}
          />
        ))
      ) : (
        <p>Loading...</p>
      )}
    </>
  );
};

export default VarifyExpert;
