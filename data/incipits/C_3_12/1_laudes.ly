\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "[no tempo]"
    R1
    r2 r16 e' a a h, a'( gis) h,
    a cis fis fis gis, fis'( e) g, fis a d d e, d' cis e,
    d cis' h d, \kneeBeam cis8 a''\p h16( a) a8 e,16\f a e cis
    d'(\p cis) cis8 e,16\f a e cis d''(\p cis) cis8 fis,16\f h h, a'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "[no tempo]"
    R1
    r2 r16 e' a a h, a'( gis) h,
    a cis fis fis gis, fis'( e) g, fis a d d e, d'( cis) e,
    d cis' h d, \kneeBeam cis8 a''\p h16( a) a8 e,16\f a e cis
    d'(\p cis) cis8 e,16\f a e cis d''(\p cis) cis8 fis,16\f h h, a'
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    e4^\solo a,8 e' d cis r cis
    h16[ d] h[ a] gis8. gis16 a4 r
    R1*3
  }
}

TenoreLyrics = \lyricmode {
  Lau -- des Ma -- ri -- ae, Ma --
  ri -- ae re -- so -- nas.
}

Organo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "[no tempo]"
    a'4.-\solo gis8 fis e r e
    d4 e8 e, a4 e'8 eis
    fis fis, cis' cis d d, a' ais
    h gis a cis'\p d cis r4
    h8 a r4 fis8 e d\f dis
  }
}

BassFigures = \figuremode {
  r4. <6>8 q q4 q8
  q <5> r2 <5>8 <6>
  <9> <8> <5 4> <_!> <9> <8> <5 4> <\t 3>
  <9>2 <6>8 q4.
  q2 q8 q q <5>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
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
