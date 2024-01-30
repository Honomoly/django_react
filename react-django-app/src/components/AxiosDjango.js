import React, { useEffect, useState } from 'react';
import axios from 'axios';

const AxiosDjango = () => {
    // 서버로 부터 받아올 데이터 state 설정
    const [data, setData] = useState('');

    // 서버에 요청해서 데이터 받아와서 
    // state 값 저장하는 함수
    const loadData = async () => {
        const response = await axios.get('http://localhost:8000/book_app/hello/');
        console.log(response.data);
        // state 값 저장
        setData(response.data);
    }

    // 렌더링할 때마다 호출
    // loadData() 한 번만 호출 : 빈배열
    useEffect(() => {
        loadData();
    }, []);

    return (
        <div>
            <h3>서버로부터 받아온 값</h3>
            {data}
        </div>
    );
};

export default AxiosDjango;