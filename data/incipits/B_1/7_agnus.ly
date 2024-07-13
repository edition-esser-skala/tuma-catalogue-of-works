\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2
    r2 d8-\solo d es16( d es) es-!
    d4 r r2
    R1
    r2 r4 d8 d
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2
    r2 h8-\solo h c16( h c) c-!
    c8 h r4 r2
    R1
    r2 r4 b!8 b
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*6
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*6
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*6
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 g'8^\solo g f4 f8 f
    es4 es8 g g4 f
    g g r2
    r4 d8 g e2
    e4 e8 e fis4 g
    g fis8. fis16 g4 r
  }
}

AltoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Do -- na, do --
  na, do -- na e -- is
  re -- _ qui -- em.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 es8^\solo es d4 d8 d
    d4 c8 c c4 c
    h h r2
    r4 h8 h b2
    a4 a8 a a4 b
    a4. a8 g4 r
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Do -- na, do --
  na, do -- na e -- is
  re -- qui -- em.
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 c8^\solo c c4 h8 h
    c4 c8 c as'4 as
    g g r2
    r4 g c,2
    cis4. cis8 c4 b!8[ c]
    d4. d8 g,4 r
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Do -- na,
  do -- na e -- is __
  re -- qui -- em.
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2~-\solo c4 h
    c2 as'
    g r
    r4 g c,2
    cis2 c4 b!8 c
    d2 g,4 g'\p
  }
}

BassFigures = \figuremode {
  r2 <4 2>4 <6>
  r2 <7>4 <6>
  <_!>1
  r4 q <7- _!>2
  <6> <4\+ 2>4 <6>
  <4> <_+>2.
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
