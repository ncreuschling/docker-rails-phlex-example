class HeartLogoSVG < Phlex::SVG
  def view_template
    svg class: "h-5 w-5 text-red-600 inline", fill: "none", stroke: "currentColor", viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg" do
      path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
    end
  end
end
