package com.example.springbootsecurityapp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CardRS {
  private long id;
  private String number;
  private long balance;
}
