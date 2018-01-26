1. Các khái niệm cơ bản về Git:

- Các trạng thái trong Git
	+ Committed có nghĩa là dữ liệu đã được lưu trữ một cách an toàn trong cơ sở dữ liệu. 
	+  Modified có nghĩa là bạn đã thay đổi tập tin nhưng chưa commit vào cơ sở dữ liệu.
	+ Staged là bạn đã đánh dấu sẽ commit phiên bản hiện tại của một tập tin đã chỉnh sửa trong lần commit sắp tới.
- Gitignore:
	# a comment - dòng này được bỏ qua
	# không theo dõi tập tin có đuôi .a 
	*.a
	# nhưng theo dõi tập lib.a, mặc dù bạn đang bỏ qua tất cả tập tin .a ở trên
	!lib.a
	# chỉ bỏ qua tập TODO ở thư mục gốc, chứ không phải ở các thư mục con subdir/TODO
	/TODO
	# bỏ qua tất cả tập tin trong thư mục build/
	build/
	# bỏ qua doc/notes.txt, không phải doc/server/ảch.txt
	doc/*.txt
	# bỏ qua tất cả tập .txt trong thư mục doc/
	doc/**/*.txt
- Repostory
	+ Local repository: Lưu tại máy sử dụng
	+ Remote repository: Lưu trên server để nhiều máy có thể commit
- Branch
- Commit: 
		Để ghi lại việc thêm/ thay đổi file hay thư mục vào repository thì sẽ thực hiện thao tác gọi là Commit.

		Khi thực hiện commit, trong repository sẽ tạo ra commit (hoặc revision) đã ghi lại sự khác biệt từ trạng thái đã commit lần trước đến trạng thái hiện tại.

		Commit này đang được chứa tại repository trong trạng thái đã nối tiếp với nhau theo thứ tự thời gian như trong hình dưới đây. Bằng việc lần theo commit này từ trạng thái mới nhất thì có thể hiểu được lịch sử thay đổi trong quá khứ hoặc nội dung thay đổi đó.
- Working tree, index
- Push
- Pull
- Clone
- Merge
- git diff
- git diff --staged 
- git diff --cached
- git log
- git log --graph