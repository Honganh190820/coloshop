// ajaxSetup() là phương thức set giá trị mặc định cho tất cả các request ajax tiếp theo
// Để gửi được request ajax chúng ta cũng cần xác thực csrf giống như Form
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});


/* Xóa một row  */
function destroyModel(model, id) {
    var result = confirm("Bạn có chắc chắn muốn xóa ?");
    if (result) { // neu nhấn == ok , sẽ send request ajax
        $.ajax({
            url: base_url + '/admin/'+model+'/'+id, // base_url được khai báo ở đầu page == http://webshop.local
            type: 'DELETE',
            data: {}, // dữ liệu truyền sang nếu có
            dataType: "json", // kiểu dữ liệu trả về
            success: function (response) { // success : kết quả trả về sau khi gửi request ajax
                if (response.status != 'undefined' && response.status == true) {
                    // xóa dòng vừa được click delete
                    $('.item-'+id).closest('tr').remove(); // class .item- ở trong class của thẻ td đã khai báo trong file index
                }
            },
            error: function (e) { // lỗi nếu có
                console.log(e.message);
            }
        });
    }
}

    $("#btn_register").click(function(){
        $.ajax({
            method: "POST",// phương thức dữ liệu được truyền đi
            url: "show_data.php",// gọi đến file server show_data.php để xử lý
            data: $("#fr_form").serialize(),//lấy toàn thông tin các fields trong form bằng hàm serialize của jquery
            success : function(response){//kết quả trả về từ server nếu gửi thành công
                console.log(response);
            }
        });
    });

