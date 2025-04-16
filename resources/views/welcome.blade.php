<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
@auth
<body>
<header>
<nav>
    <ul>
        <li><a href="/">Sākums</a></li>
        <li><a href="/eklase">Reģistrēties</a></li>
    </ul>
</nav>
</header>
  <p>Sveiks, {{ Auth::user()->first_name}}</p>
    <form method="POST" action="/logout">
        @csrf
        <button>Logout</button>
    </form>
@endauth

@guest
<li><a href="/register">Reģistrācija</a></li>
<li><a href="/login">Login</a></li>
<h1>Sveiks Viesi!</h1>
  <p>Ja tu gribi redzēt eklases atzimes un tu jau esi reģistrejies ka skolotājs vai students tad spied pogu "Log in". Ja tu esi šeit apskatīt studenta atzīmes bet tu neesi reģistrējies tad spied pogu "Reģistrācija"</p>
@endguest
</body>
</html>