<#macro main>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="UTF-8">
        <title>Blog project</title>
    </head>
    <body>
    <nav>
        <div class="nav-wrapper">
            <a href="/" class="brand-logo">Blog project</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="">First Field</a></li>
                <li><a href="">Second Field</a></li>
                <li><a href="">Third Field</a></li>
                <li><a href="/new" class="waves-effect waves-light btn">New Post</a></li>
            </ul>
        </div>
    </nav>
    <nav>
        <div class="nav-wrapper">
            <form>
                <div class="input-field">
                    <input name="query" id="search" type="search" required>
                    <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>
        </div>
    </nav>
    <#nested>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    </body>
    <footer class="page-footer">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Small project to learning spring</h5>
                    <p class="grey-text text-lighten-4">Chapter too parties its letters nor. Cheerful but whatever
                        ladyship disposed yet judgment. Lasted answer oppose to ye months no esteem. Branched is on an
                        ecstatic directly it. Put off continue you denoting returned juvenile. Looked person sister
                        result mr to. Replied demands charmed do viewing ye colonel to so. Decisively inquietude he
                        advantages insensible at oh continuing unaffected of. </p>
                    <p class="grey-text text-lighten-4">Detract yet delight written farther his general. If in so bred
                        at dare rose lose good. Feel and make two real miss use easy. Celebrated delightful an
                        especially increasing instrument am. Indulgence contrasted sufficient to unpleasant in in
                        insensible favourable. Latter remark hunted enough vulgar say man. Sitting hearted on it without
                        me. </p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Follow me now</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" target="_blank" href="https://vk.com/krowiel">VK.COM
                                Page</a></li>
                        <li><a class="grey-text text-lighten-3" target="_blank" href="https://t.me/piq_qq">Telegram
                                Profile</a></li>
                        <li><a class="grey-text text-lighten-3" target="_blank" href="mailto:krowiel@mail.ru">Email</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                © 2020 KROWIEL TEST PROJECT
            </div>
        </div>
    </footer>
    </html>
</#macro>