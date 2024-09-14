\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    R1
    r2 r4 g'~
    g8 f e d e a, a'4~
    a g a4. d,8
    e1
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r4 d~ d8 c! b a
    b2 a4 h
    c8 h a2 gis4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    R1*3
    d'4.\f d8 f4. gis,8
    a h c h16 a \grace c4 h2\trill
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    R1
    r2 r4 g'~
    g8 f e d e a, a'4~
    a g a4. d,8
    e1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*3
    d'4.\f d8 f4. gis,8
    a[ h] c h16[ a] \grace c4 h2\trill
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e -- "lei -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    r2 r4 g'
    g8[ f] e d e a, a'4~
    a g a4. d,8
    e1
  }
}

AltoLyrics = \lyricmode {
  E --
  lei -- son, e -- lei -- son, e --
  lei -- son, e --
  "lei -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2
    r4 d d8[ c! b a]
    b2 a4 h
    c8[ h] a2 gis4
  }
}

TenoreLyrics = \lyricmode {
  E -- lei --
  _ son, e --
  lei -- _ \hy
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    a'4.\f a8 b4. cis,8
    d[ e] f e16[ d] e2\trill
    d4 r r2
    R1
    r2 e4. e8
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e -- lei --
  son,

  Ky -- "ri -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    a'4. a8 b4. cis,8
    d e f e16 d e2\trill
    d4 \clef tenor d' d8 c! b a
    b2 a4 h
    c8 h a4 \clef bass e4. e8
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <2>4. <8>8
  <7>4 <6> <6> <6\\ 5!>
  <6>2 <5 4>4 <\t _+>
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
