
- **Without `_pct`**  
  → Train MLPs (severity 1, 3, 5) on **100% corrupted data**, evaluate on **clean data**.

- **With `_pct`**  
  → Train on **mixed datasets** (combinations of severity levels and data distributions), evaluate on **clean**, **s1**, **s3**, and **s5** data.

Baseline DDPM models and evaluations on specific corruptions are also provided.

---

## 🚀 How to Run Experiments

To reproduce the experiments, upload the entire `ddpm-segmentation` folder to **Ucloud** (or another compute platform).

1. **Initialize the environment**

   Always start by running:
   ```bash
   bash init.sh
