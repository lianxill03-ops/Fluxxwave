//! The Fluxxwave mark: the two strokes of an F, in a 320 by 172 view box.

use gpui::{AnyElement, App, Pixels, img, prelude::*, svg};

use crate::theme::ActiveTheme;

/// The mark in one colour, tinted with `text_color`: the title bar's mark,
/// and every mark while a Windows contrast theme is active.
pub const MARK: &str = "brand/fluxxwave-mark.svg";
/// The mark in the brand gradient, violet to cyan.
const MARK_GRADIENT: &str = "brand/fluxxwave-mark-gradient.svg";
/// The mark's height for each unit of its width.
const HEIGHT_PER_WIDTH: f32 = 172. / 320.;

/// The mark as artwork, `width` wide and as tall as its shape makes it: in the
/// brand gradient, or in the theme's brand colour while a contrast theme is
/// active, which paints with system colours only. Decorative: the text beside
/// it carries the name.
pub fn brand_mark(width: Pixels, cx: &App) -> AnyElement {
    let theme = cx.theme();
    let height = width * HEIGHT_PER_WIDTH;
    if theme.high_contrast {
        svg().path(MARK).w(width).h(height).text_color(theme.brand).into_any_element()
    } else {
        img(MARK_GRADIENT).id("brand-mark").aria_label("").w(width).h(height).into_any_element()
    }
}
