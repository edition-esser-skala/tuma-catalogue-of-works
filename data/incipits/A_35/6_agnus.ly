\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1*7
    r2 e8(-\solo d) c( h)
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1*7
    r2 c8(-\solo h) a( gis)
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    d'2\p c
    d, h''8( a) g( fis)
    g2 e
    dis e
    g8 fis e dis e2
    c4 g fis2
    e e'
    e r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    h'2\p a
    g d'8( c) h( a)
    h2 a
    a h
    h8( a) g( fis) g2
    a4 cis, h2
    h1
    c2 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    d'4.^\solo g,8 g[ fis] c' c
    c4 h r2
    r4 h cis cis
    r8 dis fis a, a4 g
    r2 h4. e8
    f4 e e dis
    e r r2
    R1
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis
  pec -- ca -- ta,
  pec -- ca -- ta mun -- di:
  Mi -- se --
  re -- re no -- _
  bis.
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*6
    h'4.^\solo h8 gis4. fis16 e
    a4 a r2
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    g2-\solo a4. fis8
    g2 r4 r8 d'
    g,4 g' g2
    fis e
    r4 r8 h' e,4 r
    a, ais h2
    e e4 d!
    c2 r4 r8 e
  }
}

BassFigures = \figuremode {
  r2 <7>8 <6>4 <5>8
  <4>4 <3>2.
  r2 <4\+ 2>
  <6\\> <4>4 <3>
  r4. <_+>8 r2
  <6 _!>4 <7 5> <4> <_+>
  r2 <_+>4 <\t>
  <6>2.. <_+>8
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
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
    \new FiguredBass { \BassFigures }
  >>
}
