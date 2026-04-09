

select
    sum(Amount) as total_amount

from {{ ref('stg_stripe__payment') }}



