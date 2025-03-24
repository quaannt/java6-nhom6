package com.asm.controller.rest;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.asm.service.UploadService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

@RestController
@CrossOrigin("*")
@RequestMapping("/admin/rest/upload")
public class UploadRestController {

    @Autowired
    UploadService uService;

    // Upload 1 file
    @PostMapping("/{folder}")
    public JsonNode uploadFile(@PathVariable String folder, @RequestParam("file") MultipartFile file) {
        File savedFile = uService.save(file, folder);
        ObjectNode node = new ObjectMapper().createObjectNode();
        node.put("filename", savedFile.getName());
        node.put("size", savedFile.length());
        return node;
    }

    // Upload nhiều file
    @PostMapping("/product/{folder}")
    public List<JsonNode> uploadFiles(@PathVariable String folder, @RequestParam("files") MultipartFile[] files) {
        List<JsonNode> result = new ArrayList<>();
        for (File savedFile : uService.save(files, folder)) {
            ObjectNode node = new ObjectMapper().createObjectNode();
            node.put("filename", savedFile.getName());
            node.put("size", savedFile.length());
            result.add(node);
        }
        return result;
    }
}
