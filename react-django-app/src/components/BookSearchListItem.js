import React from 'react';
import { Link } from 'react-router-dom';

const BookSearchListItem = ({ book }) => {
    return (
        <tr>
            <td><Link to={"/bookDetailView/" + book.bookno}>{book.bookno}</Link></td>
            <td>{book.bookname}</td>
            <td>{book.bookauthor}</td>
            <td>{book.bookprice}</td>
            <td>{book.bookdate}</td>
            <td>{book.bookstock}</td>
            <td>{book.pubno}</td>
        </tr>
    );
};
export default BookSearchListItem;