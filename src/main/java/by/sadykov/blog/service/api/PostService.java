package by.sadykov.blog.service.api;

import by.sadykov.blog.domain.Post;
import by.sadykov.blog.dto.PostDto;

import java.util.List;

public interface PostService {

    public List<PostDto> search(String query);

    public List<PostDto> add(String postTitle, String postBody, String postImage);
}
