package com.example.cardintegration.controller;
        import org.springframework.web.bind.annotation.GetMapping;
        import org.springframework.web.bind.annotation.RequestMapping;
        import org.springframework.web.bind.annotation.RestController;

        @RestController
        @RequestMapping("/card")
        public class CardController {

            @GetMapping("/status")
            public String status() {
                return "Card Integration Service is running";
            }
        }