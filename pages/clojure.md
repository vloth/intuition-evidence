---
title: Clojure insights
---

```sql commits_by_date
  select count(1) as count,
       time_bucket(INTERVAL '1 day', date) AS date,
  from intuition.commits
  group by date
```

<CalendarHeatmap
    data={commits_by_date}
    date=date
    value=count
/>

```sql commit_by_author
  select author_name as author, count(1) as quantity
  from intuition.commits
  group by all
```

<BarChart
    data={commit_by_author}
    swapXY=true
    x=author
    y=quantity
/>

```sql all_commits
  select *
  from intuition.commits
  order by date desc
```

<DataTable data={all_commits}>
  <Column id=author_name title="Author"/> 
  <Column id=message title="Message"/> 
  <Column id=hash title="Commit SHA"/> 
  <Column id=date title="Date"/> 
</DataTable>
