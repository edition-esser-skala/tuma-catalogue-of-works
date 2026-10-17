\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Andante"
    a''4. a8 h h h4
    a8 a a a a2
    gis r4 g8 g
    fis4. fis8 fis fis fis fis
    e2 e4 e
    e2 e8 e c a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Andante"
    c'4. c8 d d d4
    c8 c c c c4 f
    h,2 r4 h8 h
    ais4. ais8 h h h h
    gis2 a
    a4 gis a e'
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    c'4.^\tutti c8 d d d4
    c8 c c c c4 f
    h,2 r4 h8 h
    ais4. ais8 h h h h
    \grace a gis2 a4 a
    a gis\trill a r
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, Chri -- ste e -- lei -- _
  son, Chri -- ste
  au -- di nos, Chri -- ste ex --
  au -- di, ex --
  au -- di nos.
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    a'4.^\tutti a8 h h h4
    a8 a a a \grace h8 a2
    gis r4 g8 g
    fis4. fis8 fis fis fis fis
    e2 e4 e
    e4. e8 e4 r
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, Chri -- ste e -- lei --
  son, Chri -- ste
  au -- di nos, Chri -- ste ex --
  au -- di, ex --
  au -- di nos.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    e4.^\tutti e8 f f e4
    e8 e e e e4 d
    e2 r4 e8 e
    cis4. cis8 d d d d
    h2 c4 c
    h4. h8 a4 r
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, Chri -- ste e -- lei -- _
  son, Chri -- ste
  au -- di nos, Chri -- ste ex --
  au -- di, ex --
  au -- di nos.
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    a'4.^\tutti a8 gis gis gis4
    a8 a a a f2
    e r4 e8 e
    e4. e8 d d d d
    d2 c4 a
    e'4. e8 a,4 r
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, Chri -- ste e -- lei --
  son, Chri -- ste
  au -- di nos, Chri -- ste ex --
  au -- di, ex --
  au -- di nos.
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Andante"
    a'2-\tutti gis
    a f
    e r4 e
    e2 d~
    d c4 a
    e2 a4 c'~
  }
}

BassFigures = \figuremode {
  r2 <7 5>4 <6>
  r2 <7>4 <6>
  <_+>2. <_!>4
  <4\+ 2\+>2 <6>
  <4\+ 2> <6>
  <5 4>4 <\t _+>2 <6>4
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
