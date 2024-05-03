Root root int int

node Directory int int
node File int int

root -> Directory dir1
root -> File file1 = 200
dir1 -> Directory dir2
dir1 -> File file2 = 100
dir2 -> File file3 = 50

Directory.forward_operation = sum
File.forward_operation = sum
Directory.backward_operation = percentage
File.backward_operation = percentage