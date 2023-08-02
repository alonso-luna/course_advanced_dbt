## Week 1 Project

# Short explanations

- fct_events did not have a yml file, so I created the yml.
- mrr model was not pre-pended with dim_ or fct_ so I added the fct.  
- dim_dates uses dbt_utils to create a date spine so I created the source model, added in the dbt_project_evaluator_exceptions and move the model to core to align with the folder structure.