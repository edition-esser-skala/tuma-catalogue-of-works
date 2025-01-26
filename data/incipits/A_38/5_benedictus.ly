\version "2.24.2"
\include "header.ly"

Violini = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e4\fE h' g8 e r e'
    \kneeBeam \tuplet 3/2 8 { dis16 e fis } h,,8 r d' \kneeBeam \tuplet 3/2 8 { cis16 d e } a,,8 r c'
    \kneeBeam \tuplet 3/2 8 { h16 c d } g,,8 r e'' dis8.\trill e32( fis) e8.\trill fis32( g) \gotoBar "11"
    r2 r8 h,\p e16 g( fis e)
    dis h'( ais h) d,( h') d,( h') cis, a'( gis a) c,( a') c,( a')
  }
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*3 \gotoBar "11"
    e4^\solo h' g8 e r ais
    h h, r gis' a a, r fis'
  }
}

BassoLyrics = \lyricmode {
  Be -- ne -- di -- ctus, qui
  ve -- nit, qui ve -- nit, qui
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e8 g dis h e fis g e
    h'4 fis8 gis a4 e8 fis
    g4 g8 e h' a g e \gotoBar "11"
    e8 g dis h e e c c
    h h h h a a a a
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "vl" "1, 2" }
        \Violini
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
  >>
}
