Draft CF proposal for Cooridor feature type

* [Draft Corridor spec](corridor.md)

Possibilities:
* Directly extend `lat`, `lon`, and `z`, and `data` to have extent:
  * [Example CDL](corridor_slice.cdl)
* Keep trajetory as is and add separate dimensions, coords, and data variables for Corridor:
  * [Example CDL w/ traj kept](corridor_slice_extTraj.cdl)
