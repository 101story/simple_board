#User, Post

# Post 모델 
Integer, user_id
String, title
String, content

## User 모델
String email
String password

## post contorller
post#index
post#new
post#create
post#show
post#modify
post#update
post#destory

## user controller
user#index
user#new
user#create
user#show
user#login
user#login_process 

조건)
user:post 
    1:N 
    한명의 User 가 N 여러 Post 를 가진다. 
    Post 는 특정한 User 에 속한다. 
    