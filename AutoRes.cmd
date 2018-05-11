# bang 
clear
echo "Hãy chắc chắn bạn đã tạo kho trên github.com"
echo "Xin hãy chọn chức năng:"
echo "- Nhập vào 1 để tạo kho mới tại thư mục hiện hành, nếu chưa thấy file thì nhập tiếp 2"
echo "- Nhập vào 2 để tự động push lên github"
echo "- Nhập vào 3 để lưu thông tin trong kho thuận tiện cho lần push tiếp theo(đã tạo kho)"
read -p "Nhập vào chức năng:" chucnang
case $chucnang in 
1)
	echo "#MY PROJECT" > README.md
	git init
	git add README.md
	read -p "Nhập vào tin nhắn của bạn để push lên github:" tinnhan
	git commit -m "$tinnhan"
	read -p "NHập vào đường dẫn kho github bạn đã tạo (copy link kho trên thanh địa chỉ):" duongdan
	git remote add origin $duongdan".git"
	git config credential.helper store 
	git push -f origin master
	echo "Bạn đã tạo kho thành công!";;
2)
	git add .
	read -p "Nhập vào tin nhắn của bạn để push lên github:" message
	git commit -m "$message"
	git push -f origin master
	echo "Đẩy file lên thành công";;
3)
	git config credential.helper store
	read -p "Nhập vào email github của bạn:" email
	read -p "Nhập vào username github của bạn:" username
	git config user.email = "$email"
	git config user.name = "$username"
	git push -f origin master
	echo "Thành công!";;
*)
	echo "Nhập sai chức năng!"
esac 

