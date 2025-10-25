\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    g'2-\solo gis
    a1
    gis2 g
    fis1
    e
    dis4 e2 \hA dis4
    e r r2
    R1
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    e2-\solo d
    e2. d4
    e2 h4 e
    cis2 d
    h c4 e,
    fis g8 a h2
    h4 r r2
    R1
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1*6
    r2 d'\p
    g fis~
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1*6
    r2 g'~\p
    g4 e a2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*5
    r2 r4 h'8^\solo h
    h4 c8 c c h r h
    cis4. cis8 d4 d
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus %6
  De -- i, qui tol -- lis pec --
  ca -- ta mun -- di:
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*8
  }
}

AltoLyrics = \lyricmode {

}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 c8^\solo c d4 d8 d
    c4 c8 c c4 h8[ a]
    h4 h r e8 cis
    ais2 h4 d8 h
    gis2 a4 a8 a
    a4 g fis2
    e4 r r2
    R1
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di: Mi -- se --
  re -- re, mi -- se --
  re -- re, mi -- se --
  re -- re no --
  bis.
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*8
  }
}

BassoLyrics = \lyricmode {

}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c2-\solo h
    a f'
    e e
    e d
    d c
    h1
    e4. fis8 g2
    e d
  }
}

BassFigures = \figuremode {
  r2 <6\\>
  r <7>4 <6>
  <_+>2 <_!>
  <4\+ 2\+> <6>
  <4\+ 2> <6>
  <7 _+>4 <6 4> <5\+ \t> <\t _+>
  <5> <6> <5 4>8 <\t 3>4.
  <6\\>2 <_+>
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

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
