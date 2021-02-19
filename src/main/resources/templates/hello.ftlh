<#import "main.ftlh" as main>

<@main.main>

    <div class="container">
        <div class="row">
            <#list posts as post>
                <div class="col s4">
                    <div class="card">
                        <div class="card-image">
                            <img src="${post.img}">
                            <span class="card-title">${post.title}</span>
                        </div>
                        <div class="card-content">
                            <p>${post.body}</p>
                        </div>
                        <div class="card-action">
                            <a href="">Edit</a>
                            <a href="">Delete</a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>

</@main.main>