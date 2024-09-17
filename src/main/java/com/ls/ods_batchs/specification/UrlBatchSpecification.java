package com.ls.ods_batchs.specification;

import com.ls.ods_batchs.entity.UrlBatch;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

public class UrlBatchSpecification {
    public static Specification<UrlBatch> getUrlBatchSpecification(String id1, String fileName, String jyrq, String status) {
        return (root, query, criteriaBuilder) -> {
            List<Predicate> predicates = new ArrayList<>();

            if (id1 != null && !id1.isEmpty()) {
                predicates.add(criteriaBuilder.equal(root.get("id1"), id1));
            }
            if (fileName != null && !fileName.isEmpty()) {
                predicates.add(criteriaBuilder.like(root.get("fileName"), "%" + fileName + "%"));
            }
            if (jyrq != null && !jyrq.isEmpty()) {
                predicates.add(criteriaBuilder.equal(root.get("jyrq"), jyrq));
            }
            if (status != null && !status.isEmpty()) {
                predicates.add(criteriaBuilder.equal(root.get("status"), status));
            }

            return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
        };
    }
}
