/* min (vertical) line thickness */
#define MIN_THICKNESS 1

/* max (vertical) line thickness */
#define MAX_THICKNESS 6

/* base color to use, distance from center will multiply the RGB components */
#define BASE_COLOR vec4(0.7, 0.2, 0.45, 1)

/* amplitude */
#define AMPLIFY 500

/* outline color */
#define OUTLINE vec4(0.15, 0.15, 0.15, 1)
#define COLOR (#000000 * GRADIENT)
/* Direction that the bars are facing, 0 for inward, 1 for outward */
#define DIRECTION 0
/* Whether to switch left/right audio buffers */
#define INVERT 0
/* Whether to flip the output vertically */
#define FLIP 1
/* Whether to mirror output along `Y = X`, causing output to render on the left side of the windo>
/* Use with `FLIP 1` to render on the right side */
#define MIRROR_YX 1
