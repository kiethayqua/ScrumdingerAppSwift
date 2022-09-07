# MANAGING DATA FLOW BETWEEN VIEWS

### Source of Truth
- Việc duy trì nhiều bản sao thông tin có thể tạo ra sự mâu thuẫn 
dẫn đến bug.
- Để tránh lỗi không nhất quán dữ liệu, dùng một ***source of truth*** duy nhất cho mỗi thành phần dữ liệu trong app.
- Store phần tử ở 1 location - the source of truth - và nhiều Views có thể truy cập đến cùng 1 dữ liệu.

### Swift Property Wrappers
- Giúp thêm hành vi vào các thuộc tính hiệu quả.
- @State và @Binding giúp maintain single source of truth cho dữ liệu.

### State
- Khi khai báo 1 thuộc tính như 1 @State, tạo 1 source of truth ở trong view.
- Hệ thống xác định tất cả các thành phần của một View phụ thuộc vào giá trị của @State property.
- Những tương tác của User phải thay đổi @State property.
- Hệ thống render new version của UI bằng cách cập nhật những view nào phụ thuộc vào property đó.
![alt text](resources/State.png)

### Binding
- Một thuộc tính được wrap với @Binding chia sẻ quyền đọc và ghi với 1 source of truth đang tồn tại, như 1 @State property.
- Một @Binding không lưu trữ trực tiếp dữ liệu.
- Thay vào đó nó tạo một two-way connection giữa 1 source of truth và 1 view dùng để hiển thị và cập nhật dữ liệu.
- This connection chắc chắn rằng nhiều views liên kết với một phần dữ liệu được đồng bộ.
![alt text](resources/Binding.png)
- Hệ thống thiết lập những phụ thuộc giữa data trong @State và Child View chứa @Binding. Parent View và Child View có thể thay đổi thuộc tính source of truth. Framework tự động update cả 2 view thể phản ánh những thay đổi



