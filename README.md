# LoginApp

Приложение с двумя экранами.
Первый экран LoginViewController отвечает за авторизацию пользователя.

<img width="350" alt="SCR-20230130-to8" src="https://user-images.githubusercontent.com/50861298/215534265-bedab346-33fb-416b-b55c-93ffa9fb171a.png">

При нажатии на кнопки "Forgot User Name?" и "Forgot Password?" отображаются всплывающие окна с подсказками.

<img width="350" alt="SCR-20230130-too" src="https://user-images.githubusercontent.com/50861298/215534397-ccf81de9-68ed-40c2-b667-72efc3b0f52e.png">

На втором экране WelcomeViewController отображаются приветствие (имя пользователя) и кнопка логаута.

<img width="350" alt="SCR-20230130-tp7" src="https://user-images.githubusercontent.com/50861298/215534529-1de201f2-7d44-4940-a270-88b756035181.png">

Внизу отображается TabBarController с двумя элементами.
При нажатии на кнопку с именем пользователя отображается информация о пользователе.

<img width="350" alt="SCR-20230130-tre" src="https://user-images.githubusercontent.com/50861298/215534663-cbcd56a7-2043-4cd2-bbc9-a1e0dd410767.png">

Имя пользователя на второй экран передается при переходе с экрана авторизации. Для этого реализован метод prepare.
При возврате на экран логина данные в текстовых полях (логин и пароль) очищаются. Для этого используется unwind сегвей.
При вводе пароля, вводимые символы скрываются.
Клавиатура скрывается при тапе по экрану.
