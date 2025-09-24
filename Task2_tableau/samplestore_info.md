TABLEAU DASHBOARD CREATION STEP BY STEP PROCESS 

1) Clarify objective & audience
1. Define the **purpose** (monitor sales, track churn, executive KPI view, etc.).
2. Pick 3–6 **key questions** the dashboard must answer.
3. Know the **audience** (executive, analyst, operations) — that drives detail level and interactivity.

2) Prepare your data & decide connection type

1. Open Tableau Desktop (or Tableau Public/Online).
2. `Connect` → choose your source (Excel, CSV, database, Google Sheets, etc.).
3. Decide **Live vs Extract**:

   * Live for frequently updated DBs with good performance.
   * Extract for faster queries, offline work, scheduled refreshes.
4. In the Data Source view: set correct **data types**, parse dates, rename fields, and hide unused fields.

3) Clean & shape data (Data Source tab or Tableau Prep)

1. Use Tableau’s **Data Source** grid to: pivot columns, split fields, union files, create joins or relationships.
2. If transformations are complex, use **Tableau Prep** or pre-process in SQL / Python.
3. Create **aliases**, **groups**, and **hierarchies** (e.g., Country → State → City) if helpful.

4) Create calculated fields & parameters

1. Common calculated fields examples:

   * Profit Ratio: `SUM([Profit]) / SUM([Sales])`
   * YoY Growth: `(SUM([Sales]) - LOOKUP(SUM([Sales]), -1)) / LOOKUP(SUM([Sales]), -1)`
2. Create **parameters** for user controls (Top N, threshold, dynamic date ranges).
3. Build any needed **Level of Detail (LOD)** calculations for row-level vs aggregate logic (e.g., `{FIXED [Customer]: SUM([Sales])}`).

5) Build individual worksheets (charts)

1. For each chart ask: “What single question does this answer?” (trend, distribution, top-N, map, KPI tile).
2. Use `Show Me` or drag fields to **Rows / Columns / Marks**. Common visuals:

   * Line for trends, bar for comparisons, pie sparingly, map for geography, scatter for correlation.
3. Use **Color**, **Size**, **Label**, **Detail** on the Marks card to add meaning.
4. Add **filters** (date, category) and consider **context filters** for performance.
5. Format axes, tooltips and labels. Create a clean title for each sheet.

6) Design dashboard layout

1. `New Dashboard` → pick a **size**: Fixed (e.g., 1366×768), Automatic, or Device Designer (Desktop/Mobile).
2. Use **Tiled** containers for responsive layouts or **Floating** for overlays/annotations.
3. Arrange: header (title + date filter), KPI tiles (top), main charts, supporting charts, footnotes/filters sidebar.
4. Add **objects**: text, images (logo), web page, blank spacers to align elements.


7) Add interactivity

1. **Filters**: add global filters to the dashboard or place filter cards on the sheet.
2. **Actions**: `Dashboard → Actions` → Add Filter / Highlight / URL / Go to Sheet / Change Parameter. Configure:

   * Source sheet(s) → Target sheet(s)
   * Trigger: Select / Hover / Menu
   * Target filters: All Fields / Selected Fields / None
3. **Use as Filter**: right-click a worksheet in the dashboard → `Use as Filter` to let it drive others.
4. **Parameter Actions** (Tableau 2019.2+): let users click to change parameters (Top N, date index).

8) Polish visuals & UX

1. Choose a small, consistent color palette (use color-blind friendly palettes).
2. Use fonts and font sizes that are readable from a distance for executive displays.
3. Clean tooltips: show only necessary numbers and short explanation lines.
4. Add explanatory text or footnotes for data sources, refresh cadence, and definitions.
5. Add legends and ensure chart axes start/stop appropriately.

9) Performance tuning

1. Prefer **Extracts** when queries are slow. `Data → Extract Data`.
2. Reduce marks (limit rows returned), hide unused fields, and avoid very high-cardinality discrete fields on Rows/Columns.
3. Use **context filters** for expensive filters that should run first.
4. Push aggregations to the source (use custom SQL or materialized views) for very large datasets.
5. Monitor with **Performance Recorder** (`Help → Settings and Performance → Start Performance Recording`).

10) Test & validate

1. Verify numbers against source (spot-check aggregates).
2. Test interactions and edge cases (empty selections, Top N with ties, date boundaries).
3. Have a colleague/end user test for clarity and usefulness.

11) Publish & share

1. `Server → Publish Workbook` to Tableau Server / Tableau Online, or `File → Save to Tableau Public` if public.
2. Set extract refresh schedule on Server/Online (if using extracts).
3. Configure **permissions** (who can view/edit).
4. Options to share: embed in web page, send workbook, subscribe users to snapshot emails, or export PDF/image.
   
12) Maintain & document

1. Create a small data **dictionary** (field definitions, calculation logic, refresh schedule).
2. Use versioned filenames or Git (workbooks can be exported as TWB/TWBX).
3. Periodically review performance and usage (Server usage metrics).


Quick checklist

* [ ] KPIs answer the core questions
* [ ] Data types & dates are correct
* [ ] Filters & actions work and are intuitive
* [ ] Dashboard fits target device size(s)
* [ ] Performance tested with realistic data
* [ ] Data source and refresh schedule documented


* give a **template layout** (header + KPIs + trend + map + table) you can drop into Tableau, or
* write example **calculated fields** for a sample sales dataset (Sales, Profit, Orders, YoY, Top N).

