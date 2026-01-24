\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    a'4 a4. a8
    a4. a8 a a
    a4. a8 a a
    a4. a8 a4
    R2. %5
    a4. a8 d c
    b2.
    a4. a8 a4
    a f' f
    d2. %10
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    f4 e4. e8
    f4. e8 e e
    f4. f8 f f
    e4. e8 e4
    e4. e8 a g %5
    f4 f f8 f
    g4 g g
    f e4. e8
    f4 a a
    f4. f8 f4 %10
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    d4 cis4. cis8
    d4. e8 e e
    e4. d8 d d
    d4. cis8 cis4
    cis4. cis8 cis cis %5
    d4 d d8 d
    g,4 g g
    d' d cis
    d r r
    r a a %10
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    d4 a'2
    d,4. cis8 cis4
    d4. e8 f g
    a2.
    R2.*3
    r4 a a
    d,2.
    d4 f d %10
  }
}

ViolinoI = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    a'4 a4. a8
    a4. a8 a a
    a4. a8 a a
    a4. a8 a4
    R2. %5
    a4. a8 d c
    b2.
    a4. a8 a4
    a f' f
    d d d %10
  }
}

ViolinoII = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    a'4 a4. a8
    a4. a8 a a
    a4. a8 a a
    a4. a8 a4
    R2. %5
    a4. a8 d c
    b2.
    a4. a8 a4
    a f' f
    d d d %10
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    a'4 a4. a8
    a4. a8 a a
    a4. a8 a a
    a4. a8 a4
    R2. %5
    a4. a8 d c
    b2.
    a4. a8 a4
    a f' f
    d d d %10
  }
}

SopranoLyrics = \lyricmode {
  Qui ha -- bi -- 
  tat in ad -- iu -- 
  to -- ri -- o Al -- 
  tis -- si -- mi,
  
  in pro -- te -- cti -- 
  o -- 
  ne De -- i
  coe -- li com -- 
  mo -- ra -- "bi -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    f4 e4. e8
    f4. e8 e e
    f4. f8 f f
    e4. e8 e4
    e4. e8 a g %5
    f4 f f8 f
    g4 g g
    f e4. e8
    f4 a a
    f4. f8 f4 %10
  }
}

AltoLyrics = \lyricmode {
  Qui ha -- bi -- 
  tat in ad -- iu -- 
  to -- ri -- o Al -- 
  tis -- si -- mi,
  in pro -- te -- cti -- 
  o -- ne De -- i
  coe -- li com -- 
  mo -- ra -- bi -- 
  tur. Di -- cet
  Do -- mi -- no:
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    d4 cis4. cis8
    d4. e8 e e
    e4. d8 d d
    d4. cis8 cis4
    cis4. cis8 cis cis %5
    d4 d d8 d
    g,4 g g
    d' d cis
    d r r
    r a a %10
  }
}

TenoreLyrics = \lyricmode {
  Qui ha -- bi -- 
  tat in ad -- iu -- 
  to -- ri -- o Al -- 
  tis -- si -- mi,
  in pro -- te -- cti -- 
  o -- ne De -- i
  coe -- li com -- 
  mo -- ra -- bi -- 
  tur.
  Di -- cet
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    d4 a'4. a8
    d,4. cis8 cis cis
    d4. e8 f g
    a4. a8 a4
    R2.*3
    r4 a a
    d,4. d8 d4
    d f d
  }
}

BassoLyrics = \lyricmode {
  Qui ha -- bi -- 
  tat in ad -- iu -- 
  to -- ri -- o Al -- 
  tis -- si -- mi:

  Di -- cet
  Do -- mi -- no:
  Su -- sce -- ptor
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 3/4 \tempoMarkup "[no tempo]"
    d4-\tutti a'2
    d,4. cis8 cis4
    d4. e8 f g
    a2.
    \clef tenor cis2 cis4 %5
    d2 d4
    g,2.
    d'4 \clef bass a a
    d,2.
    d4 f d %10
  }
}

BassFigures = \figuremode {
  r4 <_+>2
  r4. <6>
  r2.
  <4>4 <_+>2
  <6>2. %5
  r
  <_->
  r4 <5 4> <\t _+>
  r2.
  r %10
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
