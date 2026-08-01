\version "2.24.2"
\include "header.ly"

ViolinoIeII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    r8 e' a e e16 d c f e d c h
    c h a f' e d c h c h a8 r c' \gotoBar "11"
    c,,16 h c a' h,8 gis' a,4 r
    R1
    r4 c'16 h a c' \appoggiatura c h8.\trill c16-! a8.\trill b16-!
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2 \gotoBar "11"
    r2 r8 a^\solo c h16 a
    e'[ d c f] e[ d c h] c[ h a f'] e[ d c h]
    c[ h] a8 r4 r2
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- te, lau --
  da -- _ _ _
  _ te,
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    a'4.-\solo h8 c a gis e
    a, a' gis e a a,16 h c8 a \gotoBar "11"
    d, d' e e, a4 r
    r8 a' gis e a, a' gis e
    a4 a, e' f8 d
  }
}

BassFigures = \figuremode {
  r2 r8 <6> q4
  <5>8 <6>2..
  <7>16 <6> <5>8 <4> <_+> r2
  r8 <6> q4. q
  r2 <5 _+>8 <6 \t>4 <6->8
}

\score {
  <<
    \new StaffGroup \with { \smallGroupDistance } <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "vl" "1, 2" }
        \ViolinoIeII
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
