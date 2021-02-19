package by.sadykov.blog.controller;

import by.sadykov.blog.domain.Post;
import by.sadykov.blog.service.api.PostService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class PostController {

    private final PostService postService;

    public PostController(@Qualifier("dbPostService") PostService postService) {
        this.postService = postService;
    }


    @GetMapping("/new")
    public String newPost() {
        return "newPost";
    }

    @RequestMapping("/create")
    public String createPost(Model model,
                             @RequestParam(required = false) String postTitle,
                             @RequestParam(required = false) String postBody,
                             @RequestParam(required = false) String postImage) {
        model.addAttribute("posts", postService.add(postTitle, postBody, postImage));
        return "hello";
    }

    @GetMapping("/")
    public String hello(Model model, @RequestParam(required = false) String query) {
        model.addAttribute("posts", postService.search(query));
        return "hello";
    }
}
