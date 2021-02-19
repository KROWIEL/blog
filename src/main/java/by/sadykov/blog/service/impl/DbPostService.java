package by.sadykov.blog.service.impl;

import by.sadykov.blog.domain.Post;
import by.sadykov.blog.dto.PostDto;
import by.sadykov.blog.jpa.PostRepository;
import by.sadykov.blog.service.api.PostService;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class DbPostService implements PostService {

    private final PostRepository postRepository;

    public DbPostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    @Override
    public List<PostDto> search(String query) {
        List<Post> posts = query != null && !query.isEmpty() ?
                postRepository.findAllByTitleLike("%" + query + "%")
                :
                postRepository.findAll();

        return posts.stream().map(post -> PostDto.builder()
                .title(post.getTitle())
                .body(post.getBody())
                .img(post.getImg())
                .build())
                .collect(Collectors.toList());
    }

    @Override
    public List<PostDto> add(String postTitle, String postBody, String postImage) {
        List<Post> posts = postRepository.saveAll(Arrays.asList(
                Post.builder()
                        .title(postTitle)
                        .body(postBody)
                        .img(postImage)
                        .build()));

        return posts.stream().map(post -> PostDto.builder()
                .title(post.getTitle())
                .body(post.getBody())
                .img(post.getImg())
                .build())
                .collect(Collectors.toList());
    }

/*    @PostConstruct
    public void setup() {
        postRepository.saveAll(Arrays.asList(
                Post.builder()
                        .title("First Title")
                        .body("First Body")
                        .img("/img/1.jpg")
                        .build(),
                Post.builder()
                        .title("Second Title")
                        .body("Second Body")
                        .img("/img/2.jpg")
                        .build(),
                Post.builder()
                        .title("Third Title")
                        .body("Third Body")
                        .img("/img/3.jpg")
                        .build()));
    }*/
}
