\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Larghetto"
    R2.*6
    r4 r a'~
    a8( gis) c( h) dis,( e)
    c'( h) d( c) dis,( e)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Larghetto"
    R2.*7
    e4 r r
    a8( gis) r4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    r4 e'2~^\solo
    e2.~
    e4 d8[ c] h[ a]
    gis[ fis] e4 a
    b8[ gis] a e' c a
    b gis a4 d~
    d8 e c2\trill
    h4 r r
    R2.
  }
}

SopranoLyrics = \lyricmode {
  Sal --

  ve Re --
  gi -- na, ma --
  _ ter mi -- se -- ri --
  cor -- di -- ae, sal --
  ve, sal --
  ve,
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 3/4 \tempoMarkup "Larghetto"
    \mvTr a'8 gis c a gis a
    c h a g f e
    f2 f4
    e2 c4
    d c r
    d c h8 a
    gis4 a8 h c d
    e4 r r
    e r r
  }
}

BassFigures = \figuremode {
  r2.
  r
  <7>4 <6>2
  <_+> <6>4
  <6-> <6>2
  <6->4 <6>2
  r2.
  <4>8 <_+> r2
  <6 4>8 <5 _+> r2
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
