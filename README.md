# Macro_project
#Macro Placement & Routing using OpenLane

# Overview

This project demonstrates a macro-based physical design flow using OpenLane (Sky130 PDK).
A single macro is instantiated multiple times and manually placed in different orientations.

#Key Concepts Covered

- Macro integration using LEF & LIB
- Manual macro placement using macro.cfg
- Floorplanning (core vs die concept)
- Placement & routing
- DEF generation (final layout)


# Design Details

- Tool Used: OpenLane v1.0.2
- PDK: Sky130
- Top Module: top_macro_design
- Macro Used: simple_macro
- Instances: 4

# Macro Placement Strategy

Macros are manually placed using "macro.cfg" with different orientations:

- N  → Normal
- FN → Flipped North
- FS → Flipped South
- S  → South

---

# Flow Steps

1. Synthesis

- RTL converted to gate-level netlist
- Macro treated as blackbox

2. Floorplanning

- Die & Core defined
- Initial macro placement attempted

3. Placement

- Standard cells placed around macros

4. CTS

- Clock tree generated

5. Routing

- Signal routing completed
- Clean routing achieved


# Challenge Faced

-Issue:

Macros were initially placed outside the core area
# Reason:

- Incorrect core utilization
- Wrong understanding of core vs die area

 Fix:

- Reduced core utilization (~10%)
- Adjusted macro placement coordinates


# Results

Parameter| Result
Core Utilization| ~10%
Macro Placement| Successful
Routing| Clean
Congestion| Low
DEF Generated| Yes


# Screenshots

* Before Fix (Incorrect Placement)

"Before" (screenshots/before_floorplan.png)

* After Fix (Correct Placement)

"After" (screenshots/after_floorplan.png)

* Final Placement

"Placement" (screenshots/placement.png)

* Routing View

"Routing" (screenshots/routing.png)

---

# Note

GDS generation was skipped due to Magic limitation with blackbox macros.
DEF is used as final layout representation.

---

# Learning Outcome

- Understanding of macro placement
- Floorplanning concepts (core vs die)
- Debugging placement issues
- End-to-end PD flow using OpenLane

---

# Conclusion

Successfully implemented a macro-based design with manual placement and achieved clean routing using OpenLane.
