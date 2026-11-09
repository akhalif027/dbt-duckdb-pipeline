SELECT 
    DATE_TRUNC('month', search_date) as month,
    search_term as role,
    COUNT(*) AS postings
FROM
    {{ref('job_postings')}}
GROUP BY month, role
ORDER BY month, role