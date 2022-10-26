package cn.pzhu.pserson.domain.response;

import lombok.Data;

import java.util.List;

@Data
public class BarDTO {
    private List<String> day;
    private List<Integer> count;
}
