import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { BarChart, Bar, XAxis, YAxis } from 'recharts';

const ChartDB = () => {
    const [data, setData] = useState({
        // bookno: '', 
        bookname: '',
        bookprice: 0,
    });

    // 서버에 요청해서 데이터 받아옴
    // state 값 저장     
    const loadData = async () => {
        const response = await axios.get('http://localhost:8000/book_app/chart_db/');
        console.log("response.data", response.data);
        setData(response.data);
    }


    // 렌더링할 때마다 호출 
    // 빈배열 : loadData() 한 번만 호출
    useEffect(() => {
        loadData();
    }, []);

    return (
        <div id="chardDB">
            <BarChart width={1000} height={400} data={data}>
                <Bar dataKey="bookprice" fill="#8884d8" />
                <XAxis dataKey="bookname" />
                {/* angle={-45} textAnchor='end' */}
                <YAxis />
            </BarChart>
        </div>
    );
};

export default ChartDB;