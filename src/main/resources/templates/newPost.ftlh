<#import "main.ftlh" as main>

<@main.main>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <form action="/create" class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <input name="postTitle" placeholder="Title" id="title" type="text" required>
                        <label for="title">Title</label>
                    </div>
                    <div class="input-field col s12">
                        <input name="postImage" id="title" type="text" required>
                        <label for="title">Input image</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input name="postBody" id="title" type="text" required>
                        <label for="title">Body</label>
                    </div>
                </div>
                <button href="/create" class="btn waves-effect waves-light" type="submit" required>Submit
                    <i class="material-icons right">send</i>
                </button>
            </form>
        </div>
    </div>
    <div style="text-align: center;">
        <br>

    </div><br>

</@main.main>