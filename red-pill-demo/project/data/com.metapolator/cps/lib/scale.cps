/* scale the skeleton */
@dictionary {
    point>center, contour > p{
        /* this way we can override scale and still have access to it's
         * original value
         */
        _scale: (Scaling widthFactor heightFactor);
        scale: _scale;
        _translate: (Translation xTranslate yTranslate);
        translate: _translate;
        transform:  translate * scale;
    }
}

glyph {
    advanceWidth: base:advanceWidth * widthFactor;
    advanceHeight: base:advanceHeight * heightFactor;
}

point > center {
    on: transform * skeleton:on;
    in: transform * skeleton:in;
    out: transform * skeleton:out;
}
/*
 * scaling contours may yield in suboptimal results!
 */
contour > p {
    on: transform * skeleton:on;
}


/* define higher level parameters */
@dictionary {
    glyph, point > center, contour > p {
        widthFactor: 1;
        xTranslate: 0;
        yTranslate: 0;
        heightFactor: 1;
        /* "skeleton" will have to provide
         * Vectors at its the keys "on|in|out"
         */
        skeleton: parent:skeleton;
    }
}
