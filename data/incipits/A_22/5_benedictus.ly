\version "2.24.2"
\include "header.ly"

ViolinoIeII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Andante"
    a'4 h\trill c16( h) a8 r4
    c d\trill e16( d) c8 r4 \gotoBar "11"
    a4 r r2
    R1*2
  }
}

Soprano = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2 \gotoBar "11"
    a'4^\solo h\trill c16[ h] a8 r4
    c d\trill e16[ d] c8 r4
    d e\trill f16[ e] d8 r f
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne -- di -- ctus,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, qui
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Andante"
    a8 a' gis e a a g? f
    e a f g c, d e c \gotoBar "11"
    a a' gis e a a g? f
    e a f g c, d e c
    f d g a d, e f d
  }
}

BassFigures = \figuremode {
  r4 <6>2.
  <6>4 <6 5>2 <6>4
  r1
  <6>4 <6 5>2.
  <6>4 <6 5>8 <_+> r2
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "vl" "1, 2" }
        \ViolinoIeII
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
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
