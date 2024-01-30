import axios from 'axios';
import React from 'react';
import { Link, useNavigate } from 'react-router-dom';

const BookListItem = ({ book }) => {
    let history = useNavigate();

    // 삭제 버튼 클릭 시
    const onDeleteItem = () => {
        if (window.confirm("삭제하시겠습니까?")) {
            axios.delete('http://localhost:8000/book_app/book/' + book.bookno)
                .then(
                    () => {
                        history('/bookList');
                        window.location.reload();
                        // reload 하지 않으면
                        // DB에서는 삭제되지만 현재 화면은 안 바뀜
                    }
                ).catch(err => console.log(err));
        }

    };

    return (
        <tr>
            <td><Link to={"/bookDetailView/" + book.bookno}>{book.bookno}</Link></td>
            <td>{book.bookname}</td>
            <td>{book.bookauthor}</td>
            <td>{book.bookprice}</td>
            <td>{book.bookdate}</td>
            <td>{book.bookstock}</td>
            <td>{book.pubno}</td>
            <td><Link to={"/bookUpdate/" + book.bookno}><button>수정</button></Link></td>
            <td><button onClick={onDeleteItem}>삭제</button></td>
        </tr>
    );
};

export default BookListItem;