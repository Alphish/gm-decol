styles_provider = new CimpliProvider(true);

styles_provider.add_value("none", new DecolStylesheet([]));

styles_provider.add_value("button", new DecolStylesheet(["hover", "disabled"])
    .with_style("hover", { image_blend: c_yellow })
    .with_style("disabled", { image_blend: c_gray })
);

get_style = function(_specifier) {
    return styles_provider.provide(_specifier);
}
