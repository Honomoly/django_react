import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';

const BookUpdate = () => {
    // (1) Part1 : bookno에 해당되는 상품 정보 받아오기
    //  detailView와 동일

    // 파라미터로 받아온 값
    const { bookno } = useParams();

    // state 
    const [book, setBook] = useState({
        // bookno: '', // 파라미터로 받아온 값 사용해도 됨
        bookname: '',
        bookauthor: '',
        bookprice: '',
        bookdate: '',
        bookstock: '',
        pubno: ''
    });

    // 서버에 요청해서 데이터 받아옴
    // state 값 저장
    const loadData = async () => {
        // const response = await axios.get('http://localhost:8000/bokk_app/book/' + bookno);
        const response = await axios.get(`http://localhost:8000/book_app/book/${bookno}`);
        console.log("detail : ", response.data);
        setBook({
            // bookno: response.data.bookno,
            bookname: response.data.bookname,
            bookauthor: response.data.bookauthor,
            bookprice: response.data.bookprice,
            bookdate: response.data.bookdate,
            bookstock: response.data.bookstock,
            pubno: response.data.pubno
        });
    }

    // 렌더링할 때마다 호출 
    // 빈배열 : loadData() 한 번만 호출
    useEffect(() => {
        loadData();
    }, []);


    // (2) Part2 : 폼에서 수정된 값으로 입력된 값을 전송하고 DB 업데이트
    // insert와 유사 

    let history = useNavigate();

    const onChange = (e) => {
        const { value, name } = e.target; // e.target에서 name과 value 추출
        setBook({
            ...book, // 기존의 prd 객체 복제한 후
            [name]: value // name 키를 가진 값을 value로 설정
        });

    };

    // 취소 버튼 눌렀을 때
    const onReset = () => {
        setBook({
            bookno: book.bookno,
            bookname: '',
            bookauthor: '',
            bookprice: '',
            bookdate: book.bookdate,
            bookstock: '',
            pubno: book.pubno
        })
    };

    // submit 버튼 클릭 시
    const onSubmit = (e) => {
        e.preventDefault();

        var frmData = new FormData(document.frmUpdate);
        axios.put(`http://localhost:8000/book_app/book/${bookno}/`, frmData)
            .then(
                response => {
                    alert("수정 완료");
                    history('/bookList');// 도서 정보 조회 화면으로 이동
                }
            )
    };

    return (
        <div>
            <h3>도서 정보 수정</h3>
            <form name="frmUpdate" onSubmit={onSubmit} onReset={onReset}>
                <table id="insert">
                    <thead>
                        <tr>
                            <th>도서번호</th>
                            <td> <input
                                type="text"
                                name="bookno"
                                value={bookno}
                                readOnly />
                            </td>
                        </tr>
                        <tr>
                            <th>도서명</th>
                            <td> <input
                                type="text"
                                name="bookname"
                                value={book.bookname}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>저자</th>
                            <td> <input
                                type="text"
                                name="bookauthor"
                                value={book.bookauthor}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>가격</th>
                            <td> <input
                                type="text"
                                name="bookprice"
                                value={book.bookprice}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>발행일</th>
                            <td> <input
                                type="text"
                                name="bookdate"
                                value={book.bookdate}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>재고</th>
                            <td> <input
                                type="text"
                                name="bookstock"
                                value={book.bookstock}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>출판사번호</th>
                            <td> <input
                                type="text"
                                name="pubno"
                                value={book.pubno}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <td colSpan="2">
                                <input type="submit" value="수정" />
                                <input type="reset" value="취소" />
                            </td>
                        </tr>
                    </thead>
                </table>
            </form>
        </div>
    );
};

export default BookUpdate;